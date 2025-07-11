.class public interface abstract Lcom/netease/mpay/oversea/trackers/Monitor$Callback;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/trackers/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onTrace(Ljava/lang/String;ILorg/json/JSONObject;)V
.end method

.method public abstract onTraceUserAction(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method
