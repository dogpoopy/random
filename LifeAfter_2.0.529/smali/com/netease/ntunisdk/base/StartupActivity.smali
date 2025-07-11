.class public Lcom/netease/ntunisdk/base/StartupActivity;
.super Landroid/app/Activity;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/netease/ntunisdk/base/StartupActivity$1;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/StartupActivity$1;-><init>(Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;)V

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/StartupDialog;->popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;)V

    return-void
.end method

.method public static popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;I)V
    .locals 1

    .line 98
    new-instance v0, Lcom/netease/ntunisdk/base/StartupActivity$2;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/StartupActivity$2;-><init>(Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;)V

    invoke-static {p0, v0, p2}, Lcom/netease/ntunisdk/base/StartupDialog;->popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "UniSDK Base"

    const-string v0, "StartupActivity onCreate"

    .line 118
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SPLASH_COLOR"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 125
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "SPLASH_TYPE"

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    .line 126
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "SPLASH_TYPE:"

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SPLASH_TYPE: "

    if-ne v4, v1, :cond_0

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " SPLASH_TYPE_PNG "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    .line 131
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/StartupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/StartupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "sdk_startup_logo"

    const-string v9, "drawable"

    invoke-virtual {v6, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 134
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 136
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v5, 0x2

    if-ne v5, v1, :cond_1

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SPLASH_TYPE_MEDIA "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    .line 144
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/StartupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/StartupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "startup"

    const-string v6, "raw"

    invoke-virtual {v2, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "android.resource://"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/StartupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "MEDIA PATH: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance p1, Landroid/widget/VideoView;

    invoke-direct {p1, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 156
    invoke-virtual {p1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 157
    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v1, Lcom/netease/ntunisdk/base/StartupActivity$3;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/StartupActivity$3;-><init>(Lcom/netease/ntunisdk/base/StartupActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 167
    new-instance v1, Lcom/netease/ntunisdk/base/StartupActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/StartupActivity$4;-><init>(Lcom/netease/ntunisdk/base/StartupActivity;Landroid/widget/VideoView;)V

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 180
    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/base/StartupActivity;->requestWindowFeature(I)Z

    .line 181
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/StartupActivity;->setContentView(Landroid/view/View;)V

    .line 183
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v1, "SPLASH_TIME"

    invoke-interface {p1, v1, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    .line 1223
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {p1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1224
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 186
    new-instance v1, Lcom/netease/ntunisdk/base/StartupActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/netease/ntunisdk/base/StartupActivity$5;-><init>(Lcom/netease/ntunisdk/base/StartupActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 205
    new-instance v1, Lcom/netease/ntunisdk/base/StartupActivity$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/netease/ntunisdk/base/StartupActivity$6;-><init>(Lcom/netease/ntunisdk/base/StartupActivity;Landroid/widget/RelativeLayout;Landroid/view/animation/AlphaAnimation;)V

    .line 212
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x3e8

    .line 213
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 236
    sget-object v0, Lcom/netease/ntunisdk/base/StartupActivity;->a:Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;->finishListener()V

    :cond_0
    return-void
.end method
