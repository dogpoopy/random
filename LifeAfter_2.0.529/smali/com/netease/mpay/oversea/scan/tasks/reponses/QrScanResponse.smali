.class public Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;
.super Lcom/netease/mpay/oversea/scan/server/modules/response/Response;
.source "QrScanResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse$WebTokenPersistMode;,
        Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse$QRSCANNER_TYPE;,
        Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse$QRSCANNER_STATUS;
    }
.end annotation


# instance fields
.field public confirmUrl:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public gameName:Ljava/lang/String;

.field public status:I

.field public uuid:Ljava/lang/String;

.field public webTokenPersist:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/server/modules/response/Response;-><init>()V

    return-void
.end method
