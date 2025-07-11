.class public Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;
.super Lcom/netease/mpay/oversea/scan/server/modules/response/Response;
.source "StringResponse.java"


# instance fields
.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/server/modules/response/Response;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;->result:Ljava/lang/String;

    return-void
.end method
