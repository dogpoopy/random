.class Lcom/netease/ntunisdk/SdkNeteaseGlobal$16;
.super Ljava/lang/Object;
.source "SdkNeteaseGlobal.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseGlobal;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

.field final synthetic val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    .line 1686
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$16;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$16;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1689
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$16;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1500(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "linegame"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$16;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method
