import flash.display.MovieClip;
import flash.events.MouseEvent;
import flash.display.SimpleButton;

class Clippy {
  // Main
  static function main() {
    var text:String = flash.Lib.current.loaderInfo.parameters.text;
        
    // button
    
    var button:SimpleButton = new SimpleButton();
    button.useHandCursor = true;
    button.upState = flash.Lib.attach("button_up");
    button.overState = flash.Lib.attach("button_over");
    button.downState = flash.Lib.attach("button_down");
    button.hitTestState = flash.Lib.attach("button_down");
    
    button.addEventListener(MouseEvent.MOUSE_UP, function(e:MouseEvent) {
      flash.system.System.setClipboard(text);
      button.upState = flash.Lib.attach("button_clicked");
    });
    
    button.addEventListener(MouseEvent.MOUSE_OVER, function(e:MouseEvent) {
      button.upState = flash.Lib.attach("button_up");
    });
    
    flash.Lib.current.addChild(button);
  }
}