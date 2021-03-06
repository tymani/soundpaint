package edu.brown.cs.filter;

import java.awt.image.BufferedImage;

/**
 * Created by Tynan on 5/5/17.
 */
public class BulgeBufferedImageFilter implements BufferedImageFilter{

  public BulgeBufferedImageFilter() {

  }

  @Override
  public BufferedImage filter(BufferedImage input, double parameterValue, double sensitivityValue) {

    int bulgeRadius = input.getWidth() / 2;

    BufferedImageFilter.validateParameters(parameterValue, sensitivityValue);
    BufferedImage output = new BufferedImage(input.getWidth(), input.getHeight(), input.getType());

    int adjustedBulgeRadius = (int) (bulgeRadius * sensitivityValue);

    int w = input.getWidth();
    int h = input.getHeight();
    for(int x = 0; x < w; x++) {
      for(int y = 0; y < h; y++) {
        int dx = x-w/2;
        int dy = y-h/2;
        double distanceSquared = Math.pow(dx, 2) + Math.pow(dy, 2);
        int sx = x;
        int sy = y;
        if (distanceSquared < Math.pow(adjustedBulgeRadius, 2)) {
          double distance = Math.sqrt(distanceSquared);
          double dirX = dx / distance;
          double dirY = dy / distance;
          double alpha = distance / (adjustedBulgeRadius);
          double distortionFactor =
              distance * Math.pow(1-alpha, 1.0 / parameterValue);
          sx -= distortionFactor * dirX;
          sy -= distortionFactor * dirY;
        }

        if (sx >= 0 && sx < w && sy >= 0 && sy < h) {
          int rgb = input.getRGB(sx, sy);
          output.setRGB(x, y, rgb);
        }
      }
    }

    return output;
  }
}
