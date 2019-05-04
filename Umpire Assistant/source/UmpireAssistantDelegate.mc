using Toybox.WatchUi;

class UmpireAssistantDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new UmpireAssistantMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}