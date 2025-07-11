.class final Lcom/netease/ntunisdk/base/StartupActivity$4;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/StartupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/VideoView;

.field final synthetic b:Lcom/netease/ntunisdk/base/StartupActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/StartupActivity;Landroid/widget/VideoView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupActivity$4;->b:Lcom/netease/ntunisdk/base/StartupActivity;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/StartupActivity$4;->a:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupActivity$4;->a:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    const-string p1, "UniSDK Base"

    const-string v0, "SPLASH_TYPE_MEDIA start play"

    .line 173
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
