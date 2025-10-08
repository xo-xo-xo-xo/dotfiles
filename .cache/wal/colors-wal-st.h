const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#171711", /* black   */
  [1] = "#7897c1", /* red     */
  [2] = "#9cbd8a", /* green   */
  [3] = "#c1a978", /* yellow  */
  [4] = "#bd8a99", /* blue    */
  [5] = "#9578c1", /* magenta */
  [6] = "#78bcc1", /* cyan    */
  [7] = "#95aec7", /* white   */

  /* 8 bright colors */
  [8]  = "#171711",  /* black   */
  [9]  = "#7897c1",  /* red     */
  [10] = "#9cbd8a", /* green   */
  [11] = "#c1a978", /* yellow  */
  [12] = "#bd8a99", /* blue    */
  [13] = "#9578c1", /* magenta */
  [14] = "#78bcc1", /* cyan    */
  [15] = "#95aec7", /* white   */

  /* special colors */
  [256] = "#171711", /* background */
  [257] = "#B9B9B8", /* foreground */
  [258] = "#B9B9B8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
