.class public final Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x2L

.field private static final CORNER_RECT_HEIGHT:I = 0x28

.field private static final CORNER_RECT_WIDTH:I = 0x8

.field private static final SCANNER_LINE_HEIGHT:I = 0xa

.field private static final SCANNER_LINE_MOVE_DISTANCE:I = 0x5

.field public static scannerEnd:I

.field public static scannerStart:I


# instance fields
.field private cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

.field private final cornerColor:I

.field private down:Z

.field private final frameColor:I

.field private labelText:Ljava/lang/String;

.field private final labelTextColor:I

.field private final labelTextSize:F

.field private final laserColor:I

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 72
    iput-boolean p2, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->down:Z

    const-string v0, "ntunisdk_laser_color"

    .line 83
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->getResColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->laserColor:I

    const-string v0, "ntunisdk_corner_color"

    .line 84
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->getResColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->cornerColor:I

    const-string v0, "ntunisdk_viewfinder_frame"

    .line 85
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->getResColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->frameColor:I

    const-string v0, "ntunisdk_viewfinder_mask"

    .line 86
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->getResColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->maskColor:I

    const-string v0, "ntunisdk_head_text"

    .line 87
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->getResColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->labelTextColor:I

    .line 89
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "QRCODE_SCAN_TIPS"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->labelText:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->labelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ntunisdk_scan_tips"

    .line 93
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->getResString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->labelText:Ljava/lang/String;

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ntunisdk_camera_text_size"

    const-string v3, "dimen"

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->labelTextSize:F

    .line 99
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 100
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 192
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->cornerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 195
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x28

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 200
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 201
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x28

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x28

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x28

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 8

    .line 260
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->maskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    .line 261
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 262
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 264
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0x1

    int-to-float v4, p2

    int-to-float v6, p4

    iget-object v7, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 251
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->frameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 253
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 254
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 255
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0x1

    int-to-float v5, p2

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .line 209
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 212
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v3, v1

    sget v1, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    add-int/lit8 v1, v1, 0x5

    int-to-float v4, v1

    iget v6, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->laserColor:I

    .line 216
    invoke-virtual {p0, v6}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->shadeColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/high16 v5, 0x43b40000    # 360.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 219
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 220
    iget-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->down:Z

    if-eqz v0, :cond_1

    .line 221
    sget v0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    .line 223
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    sget v2, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 p2, p2, -0x14

    int-to-float p2, p2

    sget v3, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 224
    iget-object p2, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 225
    sget p1, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    add-int/lit8 p1, p1, 0x5

    sput p1, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 227
    iput-boolean p1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->down:Z

    goto :goto_0

    .line 230
    :cond_1
    sget v0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_2

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    sget v2, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 p2, p2, -0x14

    int-to-float p2, p2

    sget v3, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 233
    iget-object p2, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 234
    sget p1, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    add-int/lit8 p1, p1, -0x5

    sput p1, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 236
    iput-boolean p1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->down:Z

    .line 239
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 13

    .line 143
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->labelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 148
    iget v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->labelTextColor:I

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 149
    iget v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->labelTextSize:F

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 150
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, 0x1

    .line 151
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->labelText:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-static {v0, v1, v2, v5, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 161
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 162
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->labelText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 184
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0xa

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static getResColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    .line 277
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->getResColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getResColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method private static getResString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 287
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/langutil/LanguageUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 109
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 116
    :cond_1
    sget v1, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    if-eqz v1, :cond_2

    sget v1, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerEnd:I

    if-eqz v1, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_3

    .line 117
    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerStart:I

    .line 118
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sput v1, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->scannerEnd:I

    .line 121
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 124
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    const-wide/16 v4, 0x2

    .line 138
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 273
    invoke-static {p1}, Lcom/netease/ntunisdk/zxing/client/android/ZoomHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCameraManager(Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    return-void
.end method

.method public shadeColor(I)I
    .locals 2

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    .line 246
    invoke-static {p1, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
