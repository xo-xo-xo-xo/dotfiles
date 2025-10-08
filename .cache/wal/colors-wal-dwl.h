/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x171711ff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0x95aec7ff, 0x171711ff, 0x171711ff },
	[SchemeSel]  = { 0x95aec7ff, 0x9cbd8aff, 0x7897c1ff },
	[SchemeUrg]  = { 0x95aec7ff, 0x7897c1ff, 0x9cbd8aff },
};
