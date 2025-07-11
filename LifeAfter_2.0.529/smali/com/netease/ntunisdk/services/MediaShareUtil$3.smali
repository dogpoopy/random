.class Lcom/netease/ntunisdk/services/MediaShareUtil$3;
.super Ljava/lang/Object;
.source "MediaShareUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/services/MediaShareUtil;->append2(Lcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/services/MediaModel;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$index:I

.field final synthetic val$length:I

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$model:Lcom/netease/ntunisdk/services/MediaModel;

.field final synthetic val$twitterApiClient:Lcom/netease/ntunisdk/UniTwitterApiClient;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/services/MediaShareUtil;IILcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/services/MediaModel;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    iput p2, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$index:I

    iput p3, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$length:I

    iput-object p4, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$twitterApiClient:Lcom/netease/ntunisdk/UniTwitterApiClient;

    iput-object p5, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$file:Ljava/io/File;

    iput-object p6, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$mimeType:Ljava/lang/String;

    iput-object p7, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$model:Lcom/netease/ntunisdk/services/MediaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$100(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaShareUtil"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    iget p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$index:I

    iget v6, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$length:I

    add-int/lit8 p2, v6, -0x1

    if-ge p1, p2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    iget-object v1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$twitterApiClient:Lcom/netease/ntunisdk/UniTwitterApiClient;

    iget-object v2, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$file:Ljava/io/File;

    iget-object v3, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$model:Lcom/netease/ntunisdk/services/MediaModel;

    add-int/lit8 v5, p1, 0x1

    invoke-static/range {v0 .. v6}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$000(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/services/MediaModel;II)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    iget-object p2, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$twitterApiClient:Lcom/netease/ntunisdk/UniTwitterApiClient;

    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->val$model:Lcom/netease/ntunisdk/services/MediaModel;

    invoke-static {p1, p2, v0}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$200(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;Lcom/netease/ntunisdk/services/MediaModel;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$3;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    const-string p2, "append service fail"

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$100(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
