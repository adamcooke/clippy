Clippy - Helping you copy text to your clipboard
================================================

Clippy is a very simple Flash widget that makes it possible to place arbitrary
text onto the client's clipboard. This version is pretty much the same as that of 
mojombo, but it doesn't include the text label next to the icon - instead if saying
'copied!' the icon will simply include a tick. Here is what Clippy (v2) looks like
on Codebase:

* ![Clippy in action](http://img.skitch.com/20091103-xpbjd6ptfju36ugc3dqtn8jnug.jpg)
* ![Clippy in action](http://img.skitch.com/20091103-b1syhbgkj8q5deicp7b1cnrrup.jpg)

Here is a sample Rails (Ruby) helper that can be used to place Clippy on a
page:

    def clippy(text, bgcolor='#FFFFFF')
      html = <<-EOF
        <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
                width="12"
                height="12"
                id="clippy" >
        <param name="movie" value="/flash/clippy.swf"/>
        <param name="allowScriptAccess" value="always" />
        <param name="quality" value="high" />
        <param name="scale" value="noscale" />
        <param NAME="FlashVars" value="text=#{text}">
        <param name="bgcolor" value="#{bgcolor}">
        <embed src="/flash/clippy.swf"
               width="12"
               height="12"
               name="clippy"
               quality="high"
               allowScriptAccess="always"
               type="application/x-shockwave-flash"
               pluginspage="http://www.macromedia.com/go/getflashplayer"
               FlashVars="text=#{text}"
               bgcolor="#{bgcolor}"
        />
        </object>
      EOF
    end

Installation (Pre-Built SWF)
---------------------------

If you want to use Clippy unmodified, just copy `build/clippy.swf` to your
`public` directory or wherever your static assets can be found.

Installation (Compiling)
------------------------

In order to compile Clippy from source, you need to install the following:

* [haXe](http://haxe.org/)
* [swfmill](http://swfmill.org/)

The haXe code is in `clippy.hx`, the button images are in `assets`, and the
compiler config is in `compile.hxml`. Make sure you look at all of these to
see where and what you'll need to modify. To compile everything into a final
SWF, run the following from Clippy's root directory:

    swfmill simple library.xml library.swf && haxe compile.hxml

If that is successful, copy `build/clippy.swf` to your
`public` directory or wherever your static assets can be found.

License
-------

MIT License (see LICENSE file)