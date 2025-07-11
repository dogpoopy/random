.class public Lcom/netease/cc/voice/JNIRetObject;
.super Ljava/lang/Object;
.source "JNIRetObject.java"


# instance fields
.field public context:I

.field public result:Ljava/lang/String;

.field public retVal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/netease/cc/voice/JNIRetObject;->result:Ljava/lang/String;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/netease/cc/voice/JNIRetObject;->context:I

    .line 7
    iput v0, p0, Lcom/netease/cc/voice/JNIRetObject;->retVal:I

    return-void
.end method
