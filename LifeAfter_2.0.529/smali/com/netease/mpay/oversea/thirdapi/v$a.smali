.class Lcom/netease/mpay/oversea/thirdapi/v$a;
.super Ljava/lang/Object;
.source "WeChatApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/v;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/v;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/v$a;->a:Lcom/netease/mpay/oversea/thirdapi/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/v$a;->a:Lcom/netease/mpay/oversea/thirdapi/v;

    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/v;->a(Lcom/netease/mpay/oversea/thirdapi/v;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/v$a;->a:Lcom/netease/mpay/oversea/thirdapi/v;

    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/v;->a(Lcom/netease/mpay/oversea/thirdapi/v;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/v$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/v$a$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/v$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
