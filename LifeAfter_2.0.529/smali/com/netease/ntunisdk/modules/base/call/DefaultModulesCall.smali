.class public abstract Lcom/netease/ntunisdk/modules/base/call/DefaultModulesCall;
.super Ljava/lang/Object;
.source "DefaultModulesCall.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/base/call/IModulesCall;


# instance fields
.field protected innerModulesManager:Lcom/netease/ntunisdk/modules/base/InnerModulesManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/call/DefaultModulesCall;->innerModulesManager:Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->extendFuncCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
