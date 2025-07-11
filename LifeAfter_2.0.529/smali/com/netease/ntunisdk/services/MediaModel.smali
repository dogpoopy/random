.class public Lcom/netease/ntunisdk/services/MediaModel;
.super Ljava/lang/Object;
.source "MediaModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/services/MediaModel$Error;,
        Lcom/netease/ntunisdk/services/MediaModel$ProcessingInfo;
    }
.end annotation


# instance fields
.field public expiresAfterSecs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_after_secs"
    .end annotation
.end field

.field public mediaId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field public mediaIdString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id_string"
    .end annotation
.end field

.field public processingInfo:Lcom/netease/ntunisdk/services/MediaModel$ProcessingInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "processing_info"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
