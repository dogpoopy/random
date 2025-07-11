.class final Lcom/netease/ntunisdk/base/StartupDialog$2;
.super Ljava/lang/Object;
.source "StartupDialog.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/StartupDialog;-><init>(Landroid/content/Context;IIILcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;ZLcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/VideoView;

.field final synthetic b:Lcom/netease/ntunisdk/base/StartupDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/StartupDialog;Landroid/widget/VideoView;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$2;->b:Lcom/netease/ntunisdk/base/StartupDialog;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/StartupDialog$2;->a:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$2;->a:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    const-string p1, "UniSDK Base"

    const-string v0, "SPLASH_TYPE_MEDIA start play"

    .line 180
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
