.class Lcom/netease/androidcrashhandler/zip/ZipProxy$2;
.super Ljava/lang/Object;
.source "ZipProxy.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/net/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/zip/ZipProxy;->submitUploadRequest(Ljava/lang/String;Lorg/json/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

.field final synthetic val$configContent:Lorg/json/JSONObject;

.field final synthetic val$zipfileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipProxy;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$2;->this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$2;->val$zipfileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$2;->val$configContent:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$2;->this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    const/16 v1, 0xc8

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$2;->val$zipfileName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->access$300(Lcom/netease/androidcrashhandler/zip/ZipProxy;ZLjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$2;->this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$2;->val$configContent:Lorg/json/JSONObject;

    invoke-static {v0, v1, p1, p2}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->access$400(Lcom/netease/androidcrashhandler/zip/ZipProxy;Lorg/json/JSONObject;ILjava/lang/String;)V

    return-void
.end method
