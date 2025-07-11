.class public interface abstract Lcom/netease/mcount/clientlog/ClientLogHandle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mcount/clientlog/TransactionHandle;


# virtual methods
.method public abstract getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract wrapClientLogInfo(Ljava/lang/String;)Lorg/json/JSONObject;
.end method
