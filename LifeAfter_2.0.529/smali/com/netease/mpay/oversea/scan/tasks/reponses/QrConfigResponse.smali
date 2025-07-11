.class public Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;
.super Lcom/netease/mpay/oversea/scan/server/modules/response/Response;
.source "QrConfigResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/server/modules/response/Response;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;->regex:Ljava/lang/String;

    return-void
.end method
