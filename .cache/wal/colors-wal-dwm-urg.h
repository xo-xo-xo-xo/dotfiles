static const char norm_fg[] = "#95aec7";
static const char norm_bg[] = "#171711";
static const char norm_border[] = "#171711";

static const char sel_fg[] = "#95aec7";
static const char sel_bg[] = "#9cbd8a";
static const char sel_border[] = "#95aec7";

static const char urg_fg[] = "#95aec7";
static const char urg_bg[] = "#7897c1";
static const char urg_border[] = "#7897c1";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
