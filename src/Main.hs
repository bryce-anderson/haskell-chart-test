import Graphics.Rendering.Chart.Gtk
import Graphics.Rendering.Chart.Easy

x :: [Double]
x = [1.9,1.92..18.5]

y :: [Double]
y = cos `map` x

main :: IO ()
main = toZoomableWindow 640 480 $ do
  layout_title .= "Cos wave"
  plot (line "cos" [ x `zip` y] )
  -- plotRight (line "1 + cos" [ x `zip` (((+1) . sin) `map` x)] )

