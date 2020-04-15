'''Admin Curahhujan
'''

from helper import to_date, json_serializer
from models import CurahHujan

ch = CurahHujan.select().limit(1)
d = to_date('2020/5/2')
