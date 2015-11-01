import java.awt.geom.Point2D;
import java.math.BigDecimal;

public class CoordinatesInspector {
  public Point2D coordinates(Double degrees, Double radius) {
    if(radius == 0.0)
      return new Point2D.Double(0.0, 0.0);
    degrees = Math.toRadians(degrees);
    Double x = new BigDecimal(Math.cos(degrees) * radius)
                   .setScale(10, BigDecimal.ROUND_HALF_UP).doubleValue();
    Double y = new BigDecimal(Math.sin(degrees) * radius)
                   .setScale(10, BigDecimal.ROUND_HALF_UP).doubleValue();
    return new Point2D.Double(x, y);
  }

}