"""Regenerate brand assets: toad icon for Flutter assets + TV banner.

Sources (current brand):
- android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png (192x192, toad)
- assets/brand/logo/png/toadplayer-lockup-horizontal-white@1x.png (655x200)

Outputs:
- assets/brand/logo/png/toadplayer-icon.png (copy of launcher icon, 192x192)
- android/app/src/main/res/drawable-nodpi/tv_wordmark.png (703x200, transparent)
"""
import shutil
from PIL import Image

ROOT = '/home/z/my-project/toadPALYER'

# 1) Flutter asset: the deployed launcher icon (toad tile).
src_icon = f'{ROOT}/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png'
dst_icon = f'{ROOT}/assets/brand/logo/png/toadplayer-icon.png'
shutil.copyfile(src_icon, dst_icon)
print('wrote', dst_icon, Image.open(dst_icon).size)

# 2) TV banner: white lockup centered on the same 703x200 transparent canvas
#    the old "Mornye" banner used, so Leanback layout metrics are unchanged.
lockup = Image.open(
    f'{ROOT}/assets/brand/logo/png/toadplayer-lockup-horizontal-white@1x.png'
).convert('RGBA')
banner = Image.new('RGBA', (703, 200), (0, 0, 0, 0))
offset_x = (banner.width - lockup.width) // 2
banner.alpha_composite(lockup, (offset_x, 0))
banner.save(f'{ROOT}/android/app/src/main/res/drawable-nodpi/tv_wordmark.png')
print('wrote tv_wordmark.png', banner.size)
