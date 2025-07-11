.class Lcom/netease/androidcrashhandler/other/OtherCore$2;
.super Ljava/lang/Object;
.source "OtherCore.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/other/OtherCore;->storageAllRelatedFileToUploadFileDir(Lcom/netease/androidcrashhandler/other/OtherCore$StorageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/other/OtherCore;

.field final synthetic val$copyFailFileNameArray:Lorg/json/JSONArray;

.field final synthetic val$copySuccessFileNameArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/other/OtherCore;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/OtherCore$2;->this$0:Lcom/netease/androidcrashhandler/other/OtherCore;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/other/OtherCore$2;->val$copySuccessFileNameArray:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/netease/androidcrashhandler/other/OtherCore$2;->val$copyFailFileNameArray:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/netease/androidcrashhandler/other/OtherCore$2;->val$copySuccessFileNameArray:Lorg/json/JSONArray;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/netease/androidcrashhandler/other/OtherCore$2;->val$copyFailFileNameArray:Lorg/json/JSONArray;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_0
    return-void
.end method
