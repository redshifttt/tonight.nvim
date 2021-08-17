/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0c0e11", /* black   */
  [1] = "#ec4c4c", /* red     */
  [2] = "#56d057", /* green   */
  [3] = "#f0ea6a", /* yellow  */
  [4] = "#759ed4", /* blue    */
  [5] = "#a588c6", /* magenta */
  [6] = "#50b2c1", /* cyan    */
  [7] = "#d3e3f5", /* white   */

  /* 8 bright colors */
  [8]  = "#2c3641", /* black   */
  [9]  = "#c03535", /* red     */
  [10] = "#4ab34b", /* green   */
  [11] = "#ddbc3d", /* yellow  */
  [12] = "#538bd4", /* blue    */
  [13] = "#9163c6", /* magenta */
  [14] = "#259caf", /* cyan    */
  [15] = "#d3e3f5", /* white   */

  /* special colors */
  [256] = "#0c0e11", /* background */
  [257] = "#d3e3f5", /* foreground */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor
 */
static unsigned int defaultfg = 257;
static unsigned int defaultbg = 256;
static unsigned int defaultcs = 257;

/*
 * Colors used, when the specific fg == defaultfg. So in reverse mode this
 * will reverse too. Another logic would only make the simple feature too
 * complex.
 */
static unsigned int defaultitalic = 7;
static unsigned int defaultunderline = 7;
