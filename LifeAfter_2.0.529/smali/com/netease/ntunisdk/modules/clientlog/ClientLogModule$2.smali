.class Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;
.super Ljava/lang/Object;
.source "ClientLogModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;

.field final synthetic val$callBackJson:Lorg/json/JSONObject;

.field final synthetic val$callType:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;->this$0:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;->val$callType:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;->val$callBackJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;->this$0:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;->val$callType:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;->val$source:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$2;->val$callBackJson:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->access$200(Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
