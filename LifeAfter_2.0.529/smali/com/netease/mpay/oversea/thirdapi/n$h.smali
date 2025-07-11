.class Lcom/netease/mpay/oversea/thirdapi/n$h;
.super Ljava/lang/Object;
.source "LineGameApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/n;->a(ILcom/netease/mpay/oversea/SyncApiAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

.field final synthetic b:I

.field final synthetic c:Lcom/netease/mpay/oversea/thirdapi/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/SyncApiAuthCallback;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$h;->c:Lcom/netease/mpay/oversea/thirdapi/n;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/n$h;->a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    iput p3, p0, Lcom/netease/mpay/oversea/thirdapi/n$h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$h;->a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/netease/mpay/oversea/thirdapi/n$h;->b:I

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :cond_0
    return-void
.end method
