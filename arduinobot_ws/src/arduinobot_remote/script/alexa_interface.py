#!/usr/bin/env python3
from flask import Flask
from ask_sdk_core.skill_builder import SkillBuilder
from flask_ask_sdk.skill_adapter import SkillAdapter
from ask_sdk_core.utils import is_request_type, is_intent_name
from ask_sdk_core.handler_input import HandlerInput
from ask_sdk_model import Response
from ask_sdk_model.ui import SimpleCard
from ask_sdk_core.dispatch_components import AbstractRequestHandler, AbstractExceptionHandler
from arduinobot_remote.msg import ArduinobotTaskAction, ArduinobotTaskGoal
import rospy
import threading
import actionlib

threading.Thread(target=lambda: rospy.init_node('alexa_interface', disable_signals=True)).start()
client = actionlib.SimpleActionClient('task_server', ArduinobotTaskAction)

app = Flask(__name__)


class LaunchRequestHandler(AbstractRequestHandler):
    def can_handle(self, handler_input):
        # type: (HandlerInput) -> bool
        return is_request_type("LaunchRequest")(handler_input)

    def handle(self, handler_input):
        # type: (HandlerInput) -> Response
        speech_text = "Ciao, come posso aiutarti ?"

        handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Online", speech_text)).set_should_end_session(
            False)


        goal = ArduinobotTaskGoal(task_number=0)
        client.send_goal(goal)
        return handler_input.response_builder.response


class PickIntentHandler(AbstractRequestHandler):
    def can_handle(self, handler_input):
        # type: (HandlerInput) -> bool
        return is_intent_name("Pickintent")(handler_input)

    def handle(self, handler_input):
        # type: (HandlerInput) -> Response
        speech_text = "Ok, mi sto muovendo"

        handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Pick Intent", speech_text)).set_should_end_session(
            True)

        goal = ArduinobotTaskGoal(task_number=1)
        client.send_goal(goal)

        return handler_input.response_builder.response

class SleepIntentHandler(AbstractRequestHandler):
    def can_handle(self, handler_input):
        # type: (HandlerInput) -> bool
        return is_intent_name("Sleepintent")(handler_input)

    def handle(self, handler_input):
        # type: (HandlerInput) -> Response
        speech_text = "Ciao a dopo"

        handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Sleep Intent", speech_text)).set_should_end_session(
            True)

        goal = ArduinobotTaskGoal(task_number=2)
        client.send_goal(goal)

        return handler_input.response_builder.response


class WakeIntentHandler(AbstractRequestHandler):
    def can_handle(self, handler_input):
        # type: (HandlerInput) -> bool
        return is_intent_name("Wakeintent")(handler_input)

    def handle(self, handler_input):
        # type: (HandlerInput) -> Response
        speech_text = "Ciao, Sono pronto"

        handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Wake Intent", speech_text)).set_should_end_session(
            True)
            
        goal = ArduinobotTaskGoal(task_number=0)
        client.send_goal(goal)

        return handler_input.response_builder.response


class AllExceptionHandler(AbstractExceptionHandler):

    def can_handle(self, handler_input, exception):
        # type: (HandlerInput, Exception) -> bool
        return True

    def handle(self, handler_input, exception):
        # type: (HandlerInput, Exception) -> Response

        speech = "Scusa non ho capito, potresti ripetere."
        handler_input.response_builder.speak(speech).ask(speech)
        return handler_input.response_builder.response


skill_builder = SkillBuilder()
skill_builder.add_request_handler(LaunchRequestHandler())
skill_builder.add_request_handler(PickIntentHandler())
skill_builder.add_request_handler(SleepIntentHandler())
skill_builder.add_request_handler(WakeIntentHandler())
skill_builder.add_exception_handler(AllExceptionHandler())


skill_adapter = SkillAdapter(
    skill=skill_builder.create(), skill_id="amzn1.ask.skill.48ecb7e4-c663-45de-b853-4fdbfdc386aa",
    app=app)


skill_adapter.register(app=app, route="/")


if __name__ == '__main__':
    app.run()
    