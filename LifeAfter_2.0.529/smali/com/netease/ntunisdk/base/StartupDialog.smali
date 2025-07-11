.class public Lcom/netease/ntunisdk/base/StartupDialog;
.super Ljava/lang/Object;
.source "StartupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;,
        Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;
    }
.end annotation


# static fields
.field private static a:Lcom/netease/ntunisdk/base/StartupDialog;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/app/Dialog;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;IIILcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 247
    invoke-direct/range {v0 .. v7}, Lcom/netease/ntunisdk/base/StartupDialog;-><init>(Landroid/content/Context;IIILcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;ZLcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIILcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;ZLcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V
    .locals 5

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UniSDK Base"

    const-string v1, "StartupDialog construct"

    .line 105
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x103000a

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    .line 107
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->d:Landroid/widget/RelativeLayout;

    .line 108
    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 110
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p3, v1, :cond_0

    .line 111
    iget-object p3, p0, Lcom/netease/ntunisdk/base/StartupDialog;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x600

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    :cond_0
    const/4 p3, 0x1

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "layoutInDisplayCutoutMode"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 117
    invoke-virtual {v3, v2, p3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 118
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "SPLASH_TYPE: "

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    goto/16 :goto_2

    .line 145
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " SPLASH_TYPE_MEDIA "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xc

    .line 148
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p3, 0xa

    .line 149
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p3, 0x9

    .line 150
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p3, 0xb

    .line 151
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "startup"

    const-string v4, "raw"

    invoke-virtual {p3, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "android.resource://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 157
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MEDIA PATH: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 164
    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 165
    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance p1, Lcom/netease/ntunisdk/base/StartupDialog$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/base/StartupDialog$1;-><init>(Lcom/netease/ntunisdk/base/StartupDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 174
    new-instance p1, Lcom/netease/ntunisdk/base/StartupDialog$2;

    invoke-direct {p1, p0, v0}, Lcom/netease/ntunisdk/base/StartupDialog$2;-><init>(Lcom/netease/ntunisdk/base/StartupDialog;Landroid/widget/VideoView;)V

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_2

    .line 123
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " SPLASH_TYPE_PNG "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 126
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v0, "drawable"

    if-eqz p6, :cond_3

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "netease_splash"

    invoke-virtual {v1, v4, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdk_startup_logo"

    invoke-virtual {v1, v4, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v3, "SPLASH_PNG_SCALE_TYPE"

    invoke-interface {p1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p3, p1, :cond_4

    .line 136
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 138
    :cond_4
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    :goto_2
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->d:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/netease/ntunisdk/base/StartupDialog$3;

    invoke-direct {p2, p0, p7}, Lcom/netease/ntunisdk/base/StartupDialog$3;-><init>(Lcom/netease/ntunisdk/base/StartupDialog;Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/netease/ntunisdk/base/StartupDialog;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 198
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 199
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 200
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    new-instance p2, Lcom/netease/ntunisdk/base/StartupDialog$4;

    invoke-direct {p2, p0, p5}, Lcom/netease/ntunisdk/base/StartupDialog$4;-><init>(Lcom/netease/ntunisdk/base/StartupDialog;Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-nez p6, :cond_5

    mul-int/lit16 p4, p4, 0x3e8

    int-to-long p1, p4

    .line 1270
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 p5, 0x0

    invoke-direct {p3, p4, p5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1271
    invoke-virtual {p3, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 215
    new-instance p1, Lcom/netease/ntunisdk/base/StartupDialog$5;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/base/StartupDialog$5;-><init>(Lcom/netease/ntunisdk/base/StartupDialog;)V

    invoke-virtual {p3, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 236
    new-instance p1, Lcom/netease/ntunisdk/base/StartupDialog$6;

    invoke-direct {p1, p0, p3}, Lcom/netease/ntunisdk/base/StartupDialog$6;-><init>(Lcom/netease/ntunisdk/base/StartupDialog;Landroid/view/animation/AlphaAnimation;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->e:Ljava/lang/Runnable;

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/StartupDialog;)Landroid/app/Dialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic a()Lcom/netease/ntunisdk/base/StartupDialog;
    .locals 1

    .line 33
    sget-object v0, Lcom/netease/ntunisdk/base/StartupDialog;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/ntunisdk/base/StartupDialog;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/ntunisdk/base/StartupDialog;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static ntCloseFlash()V
    .locals 2

    .line 302
    sget-object v0, Lcom/netease/ntunisdk/base/StartupDialog;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    const-string v1, "UniSDK Base"

    if-nez v0, :cond_0

    const-string v0, "startupDialogInst not instance"

    .line 303
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "call ntCloseFlash"

    .line 305
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/netease/ntunisdk/base/StartupDialog;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    iget-object v1, v0, Lcom/netease/ntunisdk/base/StartupDialog;->b:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 307
    iget-object v0, v0, Lcom/netease/ntunisdk/base/StartupDialog;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    :cond_1
    sget-object v0, Lcom/netease/ntunisdk/base/StartupDialog;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    sget-object v0, Lcom/netease/ntunisdk/base/StartupDialog;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public static popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;)V
    .locals 3

    .line 69
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SPLASH_COLOR"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 70
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/base/StartupDialog;->popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;I)V

    return-void
.end method

.method public static popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;I)V
    .locals 3

    .line 82
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SPLASH_TYPE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 83
    invoke-static {p0, p1, p2, v0}, Lcom/netease/ntunisdk/base/StartupDialog;->popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;II)V

    return-void
.end method

.method public static popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;II)V
    .locals 9

    .line 96
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SPLASH_TIME"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v7

    .line 97
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SPLASH_STAY_TIME"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 98
    new-instance v1, Lcom/netease/ntunisdk/base/StartupDialog;

    move-object v3, v1

    move-object v4, p0

    move v5, p3

    move v6, p2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/netease/ntunisdk/base/StartupDialog;-><init>(Landroid/content/Context;IIILcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;)V

    .line 1255
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p0

    const-string p1, "CLEAR_FOCUS_WHEN_STARTUP"

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 1256
    iget-object p0, v1, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 1258
    :cond_0
    iget-object p0, v1, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 1259
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1260
    iget-object p1, v1, Lcom/netease/ntunisdk/base/StartupDialog;->e:Ljava/lang/Runnable;

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "StartupDialog popStartup color: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", type="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UniSDK Base"

    invoke-static {p1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popStartupSecond(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V
    .locals 11

    .line 278
    sget-object v0, Lcom/netease/ntunisdk/base/StartupDialog;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    if-nez v0, :cond_0

    const-string v0, "UniSDK Base"

    const-string v1, "new startupDialogInst"

    .line 279
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "SPLASH_COLOR"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v6

    .line 281
    new-instance v0, Lcom/netease/ntunisdk/base/StartupDialog;

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v0

    move-object v4, p0

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/netease/ntunisdk/base/StartupDialog;-><init>(Landroid/content/Context;IIILcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;ZLcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V

    sput-object v0, Lcom/netease/ntunisdk/base/StartupDialog;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    .line 285
    :cond_0
    sget-object p0, Lcom/netease/ntunisdk/base/StartupDialog;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    iget-object p0, p0, Lcom/netease/ntunisdk/base/StartupDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 286
    sget-object p0, Lcom/netease/ntunisdk/base/StartupDialog;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->b:Landroid/os/Handler;

    .line 287
    sget-object p0, Lcom/netease/ntunisdk/base/StartupDialog;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog;->b:Landroid/os/Handler;

    new-instance v0, Lcom/netease/ntunisdk/base/StartupDialog$7;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/StartupDialog$7;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/StartupDialog;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
