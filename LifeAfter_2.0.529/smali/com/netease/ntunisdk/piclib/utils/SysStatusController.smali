.class public Lcom/netease/ntunisdk/piclib/utils/SysStatusController;
.super Ljava/lang/Object;
.source "SysStatusController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUiController"


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public brand:Ljava/lang/String;

.field private currentTag:Ljava/lang/String;

.field public isHarmonyOS:Ljava/lang/Boolean;

.field public model:Ljava/lang/String;

.field private final states:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->states:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->isHarmonyOS:Ljava/lang/Boolean;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private useLegacyWay()Z
    .locals 3

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-gt v0, v2, :cond_0

    return v1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->isHarmonyOS()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->brand:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->brand:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBrand -> brand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUiController"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->model:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->model:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getModel -> model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUiController"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->model:Ljava/lang/String;

    return-object v0
.end method

.method public isHarmonyOS()Z
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->isHarmonyOS:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.huawei.system.BuildEx"

    .line 183
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOsBrand"

    new-array v3, v0, [Ljava/lang/Class;

    .line 184
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "harmony"

    new-array v4, v0, [Ljava/lang/Object;

    .line 185
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->isHarmonyOS:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHarmonyOS -> e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemUiController"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->isHarmonyOS:Ljava/lang/Boolean;

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->isHarmonyOS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public refreshCurrentState()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->currentTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->refreshState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshState(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->currentTag:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->states:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setPortraitStatus(Landroid/view/Window;Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setLandscapeStatus(Landroid/view/Window;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeState(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->states:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLandscapeStatus(Landroid/view/Window;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "isWhite"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->useLegacyWay()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setStatusWhiteBg(Landroid/view/Window;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setStatusBlackBg(Landroid/view/Window;)V

    :goto_0
    const/16 p2, 0x400

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_4

    .line 89
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_6

    .line 90
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 92
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    const/4 v1, 0x2

    .line 93
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 94
    :goto_1
    invoke-interface {v0, v3, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    const/16 v1, 0x10

    if-eqz p2, :cond_3

    const/16 v2, 0x10

    .line 96
    :cond_3
    invoke-interface {v0, v2, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    if-eqz p2, :cond_4

    const/4 v2, -0x1

    goto :goto_2

    :cond_4
    const/high16 v2, -0x1000000

    .line 98
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v0, -0x1000000

    .line 99
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public setLandscapeStatusBlack(Landroid/view/Window;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setLandscapeStatus(Landroid/view/Window;Z)V

    return-void
.end method

.method public setLandscapeStatusWhite(Landroid/view/Window;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setLandscapeStatus(Landroid/view/Window;Z)V

    return-void
.end method

.method public setPortraitStatus(Landroid/view/Window;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "isWhite"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->useLegacyWay()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setStatusWhiteBg(Landroid/view/Window;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setStatusBlackBg(Landroid/view/Window;)V

    :goto_0
    const/16 p2, 0x400

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_4

    .line 120
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_6

    .line 121
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 122
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->show(I)V

    .line 123
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    const/4 v1, 0x2

    .line 124
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 125
    :goto_1
    invoke-interface {v0, v3, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    const/16 v1, 0x10

    if-eqz p2, :cond_3

    const/16 v2, 0x10

    .line 127
    :cond_3
    invoke-interface {v0, v2, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    if-eqz p2, :cond_4

    const/4 v2, -0x1

    goto :goto_2

    :cond_4
    const/high16 v2, -0x1000000

    .line 129
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v0, -0x1000000

    .line 130
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public setPortraitStatusBlack(Landroid/view/Window;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setPortraitStatus(Landroid/view/Window;Z)V

    return-void
.end method

.method public setPortraitStatusWhite(Landroid/view/Window;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->setPortraitStatus(Landroid/view/Window;Z)V

    return-void
.end method

.method public setStatusBlackBg(Landroid/view/Window;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, -0x1000000

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 155
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 157
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 160
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    const/16 v0, 0x1002

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setStatusWhiteBg(Landroid/view/Window;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    const/16 v0, 0x2000

    .line 139
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    or-int/lit8 v0, v0, 0x10

    .line 143
    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 145
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    or-int/lit16 v0, v0, 0x1000

    or-int/lit8 v0, v0, 0x2

    .line 148
    :cond_2
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public updateState(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "isWhite"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->states:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->refreshState(Ljava/lang/String;)V

    return-void
.end method
