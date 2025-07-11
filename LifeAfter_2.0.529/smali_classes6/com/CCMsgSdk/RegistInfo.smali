.class public Lcom/CCMsgSdk/RegistInfo;
.super Ljava/lang/Object;
.source "RegistInfo.java"


# instance fields
.field public context:I

.field public mInfo:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/CCMsgSdk/RegistInfo;->mInfo:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/CCMsgSdk/RegistInfo;->context:I

    return-void
.end method
