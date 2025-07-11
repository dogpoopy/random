.class Lcom/netease/androidcrashhandler/zip/ZipProxy$3;
.super Ljava/lang/Object;
.source "ZipProxy.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/zip/ZipProxy;->retryUpload(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

.field final synthetic val$configContent:Lorg/json/JSONObject;

.field final synthetic val$reTryTime:I

.field final synthetic val$zipFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipProxy;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$3;->this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$3;->val$zipFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$3;->val$configContent:Lorg/json/JSONObject;

    iput p4, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$3;->val$reTryTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$3;->this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$3;->val$zipFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$3;->val$configContent:Lorg/json/JSONObject;

    iget v3, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$3;->val$reTryTime:I

    invoke-static {v0, v1, v2, v3}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->access$200(Lcom/netease/androidcrashhandler/zip/ZipProxy;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method
