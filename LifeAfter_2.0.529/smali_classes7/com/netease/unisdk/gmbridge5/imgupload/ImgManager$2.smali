.class final Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$2;
.super Ljava/lang/Object;
.source "ImgManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$imageId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$2;->val$listener:Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$2;->val$imageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$2;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$2;->val$listener:Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$2;->val$imageId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$2;->val$callback:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
