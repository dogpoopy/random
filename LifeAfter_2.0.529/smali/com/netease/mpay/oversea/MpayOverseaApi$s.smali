.class Lcom/netease/mpay/oversea/MpayOverseaApi$s;
.super Lcom/netease/mpay/oversea/q4;
.source "MpayOverseaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->openLVU(Lcom/netease/mpay/oversea/OnLVUCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/OnLVUCallback;

.field final synthetic c:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/OnLVUCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$s;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$s;->b:Lcom/netease/mpay/oversea/OnLVUCallback;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/q4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/qb;)V
    .locals 1

    const-string p3, "openLVU"

    const-string v0, "success!"

    .line 1
    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$s;->b:Lcom/netease/mpay/oversea/OnLVUCallback;

    invoke-interface {p3, p1, p2}, Lcom/netease/mpay/oversea/OnLVUCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 1

    const-string p3, "openLVU"

    const-string v0, "failed"

    .line 1
    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$s;->b:Lcom/netease/mpay/oversea/OnLVUCallback;

    invoke-interface {p3, p1, p2}, Lcom/netease/mpay/oversea/OnLVUCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method
