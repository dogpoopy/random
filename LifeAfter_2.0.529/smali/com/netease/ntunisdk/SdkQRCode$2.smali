.class Lcom/netease/ntunisdk/SdkQRCode$2;
.super Ljava/lang/Object;
.source "SdkQRCode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkQRCode;->createQRCode(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkQRCode;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$errorCorrection:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$content:Ljava/lang/String;

    iput p3, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$width:I

    iput p4, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$height:I

    iput-object p5, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$fileName:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$errorCorrection:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, ""

    const-string v1, "createQRCode exception:"

    const-string v2, "UniQR sdk"

    .line 225
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createQRCode, content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",fileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-static {v3}, Lcom/netease/ntunisdk/SdkQRCode;->access$100(Lcom/netease/ntunisdk/SdkQRCode;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$content:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$width:I

    iget v8, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$height:I

    iget-object v9, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$fileName:Ljava/lang/String;

    iget-object v10, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->val$errorCorrection:Ljava/lang/String;

    invoke-static/range {v4 .. v10}, Lcom/netease/ntunisdk/zxing/encoding/EncodingHandler;->createQRCode(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    iget-object v4, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/SdkQRCode;->access$200(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    .line 235
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->access$500(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V

    goto :goto_3

    .line 232
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->access$400(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V

    goto :goto_3

    .line 229
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkQRCode$2;->this$0:Lcom/netease/ntunisdk/SdkQRCode;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->access$300(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
