.class Lcom/netease/mrzhna/Client$6;
.super Lcom/netease/pharos/PharosListener;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Client;->initPharos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Client;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Client;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/netease/mrzhna/Client$6;->this$0:Lcom/netease/mrzhna/Client;

    invoke-direct {p0}, Lcom/netease/pharos/PharosListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPharosPolicy(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 803
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/neox/NativeInterface;->NativeCommonCallback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPharosQos(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 815
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/neox/NativeInterface;->NativeCommonCallback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPharosServer(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 827
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/neox/NativeInterface;->NativeCommonCallback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResult(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 791
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/neox/NativeInterface;->NativeCommonCallback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
