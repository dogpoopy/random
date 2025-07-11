.class public Lcom/netease/ntunisdk/FloatingButtonService;
.super Landroid/app/Service;
.source "FloatingButtonService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/FloatingButtonService$DelayAdjustHandler;
    }
.end annotation


# static fields
.field private static final INTERVAL_PRESS_TIME:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "FloatingButtonService"


# instance fields
.field private button:Landroid/widget/ImageButton;

.field private buttonAction:I

.field private delayHandler:Landroid/os/Handler;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private prePressTime:J

.field private screenHeight:I

.field private screenWidth:I

.field private windowManager:Landroid/view/WindowManager;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->prePressTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/FloatingButtonService;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->prePressTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/FloatingButtonService;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->prePressTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/FloatingButtonService;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/netease/ntunisdk/FloatingButtonService;->adjustFloatingWindow()V

    return-void
.end method

.method private adjustFloatingWindow()V
    .locals 3

    .line 187
    iget v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->screenWidth:I

    shr-int/lit8 v0, v0, 0x1

    .line 188
    iget-object v1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netease/ntunisdk/FloatingButtonService;->windowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gt v1, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->screenWidth:I

    iget-object v2, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 198
    iget-object v2, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string v0, "FloatingButtonService"

    const-string v1, "null instance"

    .line 189
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dismissFloatingWindow()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    :cond_0
    return-void
.end method

.method private sendDelayAdjust()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->delayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->delayHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showFloatingWindow()V
    .locals 3

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FloatingButtonService"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "FloatingButtonService"

    const-string v1, "onCreate"

    .line 42
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/netease/ntunisdk/FloatingButtonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->windowManager:Landroid/view/WindowManager;

    .line 45
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 47
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 49
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 51
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->screenWidth:I

    .line 52
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->screenHeight:I

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->screenWidth:I

    .line 55
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->screenHeight:I

    .line 58
    :goto_0
    new-instance v0, Lcom/netease/ntunisdk/FloatingButtonService$DelayAdjustHandler;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/FloatingButtonService$DelayAdjustHandler;-><init>(Lcom/netease/ntunisdk/FloatingButtonService;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->delayHandler:Landroid/os/Handler;

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 65
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    .line 66
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x28

    .line 67
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 68
    iget v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->screenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->screenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v0, v0, 0xa

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x0

    .line 71
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 72
    iget v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->screenHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 74
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/FloatingButtonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/FloatingButtonService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/FloatingButtonService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xa0

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 81
    iget-object v1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 88
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    .line 89
    invoke-virtual {p0}, Lcom/netease/ntunisdk/FloatingButtonService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/FloatingButtonService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unishare_compat_floating_circle"

    const-string v4, "drawable"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 92
    :goto_2
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    new-instance v1, Lcom/netease/ntunisdk/FloatingButtonService$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/FloatingButtonService$1;-><init>(Lcom/netease/ntunisdk/FloatingButtonService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FloatingButtonService"

    const-string v1, "onDestroy"

    .line 156
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/netease/ntunisdk/FloatingButtonService;->dismissFloatingWindow()V

    .line 158
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRebind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingButtonService"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingButtonService"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/netease/ntunisdk/FloatingButtonService;->showFloatingWindow()V

    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 241
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 243
    iget v3, p0, Lcom/netease/ntunisdk/FloatingButtonService;->x:I

    sub-int v3, v0, v3

    .line 244
    iget v4, p0, Lcom/netease/ntunisdk/FloatingButtonService;->y:I

    sub-int v4, v2, v4

    .line 246
    iput v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->x:I

    .line 247
    iput v2, p0, Lcom/netease/ntunisdk/FloatingButtonService;->y:I

    .line 248
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 249
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 250
    iget-object v0, p0, Lcom/netease/ntunisdk/FloatingButtonService;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/netease/ntunisdk/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 253
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->buttonAction:I

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/FloatingButtonService;->sendDelayAdjust()V

    goto :goto_1

    .line 259
    :cond_2
    iget p1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->buttonAction:I

    if-nez p1, :cond_3

    .line 260
    iget-object p1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->button:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 263
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->buttonAction:I

    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->x:I

    .line 235
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->y:I

    .line 237
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/FloatingButtonService;->buttonAction:I

    :goto_1
    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingButtonService"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
