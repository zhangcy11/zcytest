class Rect:

    def __init__(self, x, y, width, height):
        # (x, y)表示矩形的左下点坐标，width为长，height为宽
        self.x = x
        self.y = y
        self.width = width
        self.height = height

    def intersect(self, rect: 'Rect') -> bool:
        Lx = abs((self.x + self.width / 2) - (rect.x + rect.width / 2)) # 矩形A和矩形B物理中心点X方向的距离为Lx
        Ly = abs((self.y + self.height / 2) - (rect.y + rect.height / 2)) # 矩形A和矩形B物理中心点Y方向的距离为Ly
        if (Lx <= (self.width + rect.width) / 2) and (Ly <= (self.height + rect.height) / 2): # 矩形A和矩形B X方向的边长为 width ；矩形A和矩形B Y方向的边长为 height
            return True
        else:
            return False

print(Rect(1, 1, 1, 1).intersect(Rect(1, 1, 0.5, 0.5)))