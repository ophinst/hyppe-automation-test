*** Settings ***
Library     AppiumLibrary
Library     DebugLibrary
Library     Process

Resource    setup.robot
Resource    teardown.robot
Resource    keywords/pages/_PAGES_IMPORT.robot
Resource    keywords/logics/_LOGICS_IMPORT.robot
Resource    keywords/helper/_HELPER_IMPORT.robot

*** Variables ***
${APPIUM_SERVER}            http://localhost:${PORT}/wd/hub
${PORT}                     4729
${UDID}                     emulator-5554
${APP_PACKAGE}              com.hyppe.hyppeapp
${APP_ACTIVITY}             com.hyppe.hyppeapp.MainActivity

${REMOTE_SELENIUM}          false
