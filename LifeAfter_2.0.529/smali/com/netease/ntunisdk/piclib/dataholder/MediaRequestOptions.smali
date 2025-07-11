.class public Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;
.super Ljava/lang/Object;
.source "MediaRequestOptions.java"


# instance fields
.field public folder:Ljava/lang/String;

.field public maxNum:I

.field public methodType:Ljava/lang/String;

.field public quality:I

.field public supportCamera:Z

.field public supportGif:Z

.field public type:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 8
    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->maxNum:I

    return-void
.end method
