using Toybox.WatchUi;
using Toybox.Graphics;
var Balls = 0;
var Strikes = 0;
var Outs = 0;
class UmpireAssistantView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {

        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        var string1;
    	var string2;
    	var string3;
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        string1 = "Balls: " + Balls;
        dc.drawText(40, (dc.getHeight() / 2) - 80, Graphics.FONT_LARGE, string1, Graphics.TEXT_JUSTIFY_LEFT);
        string2 = "Strikes: " + Strikes;
        dc.drawText(40, (dc.getHeight() / 2), Graphics.FONT_LARGE, string2, Graphics.TEXT_JUSTIFY_LEFT);
        string3 = "Outs: " + Outs;
        dc.drawText(40, (dc.getHeight() / 2) + 60, Graphics.FONT_LARGE, string3, Graphics.TEXT_JUSTIFY_LEFT);
        
        
    }
	function onString1(tap){
	Balls = Balls + 1;
	}
    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
