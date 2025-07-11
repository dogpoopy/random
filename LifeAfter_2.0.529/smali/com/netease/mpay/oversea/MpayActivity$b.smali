.class Lcom/netease/mpay/oversea/MpayActivity$b;
.super Ljava/lang/Object;
.source "MpayActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/netease/mpay/oversea/MpayActivity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayActivity;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayActivity$b;->c:Lcom/netease/mpay/oversea/MpayActivity;

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayActivity$b;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/netease/mpay/oversea/MpayActivity$b;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$b;->c:Lcom/netease/mpay/oversea/MpayActivity;

    new-instance v1, Lcom/netease/mpay/oversea/MpayActivity$b$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/MpayActivity$b$a;-><init>(Lcom/netease/mpay/oversea/MpayActivity$b;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$b;->c:Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/MpayActivity;->finish()V

    :goto_0
    return-void
.end method
