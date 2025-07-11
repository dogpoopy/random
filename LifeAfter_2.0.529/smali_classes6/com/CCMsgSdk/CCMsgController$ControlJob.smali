.class Lcom/CCMsgSdk/CCMsgController$ControlJob;
.super Ljava/lang/Object;
.source "CCMsgController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/CCMsgSdk/CCMsgController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlJob"
.end annotation


# instance fields
.field public context:I

.field public obj:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/CCMsgSdk/CCMsgController;


# direct methods
.method private constructor <init>(Lcom/CCMsgSdk/CCMsgController;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController$ControlJob;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/CCMsgSdk/CCMsgController;Lcom/CCMsgSdk/CCMsgController$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/CCMsgSdk/CCMsgController$ControlJob;-><init>(Lcom/CCMsgSdk/CCMsgController;)V

    return-void
.end method
