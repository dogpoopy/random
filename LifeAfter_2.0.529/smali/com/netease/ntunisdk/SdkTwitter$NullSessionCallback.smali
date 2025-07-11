.class Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "SdkTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NullSessionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageUri:Landroid/net/Uri;

.field private mLink:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/ntunisdk/SdkTwitter;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkTwitter;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 479
    iput-object p2, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->mText:Ljava/lang/String;

    .line 480
    iput-object p4, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->mLink:Ljava/lang/String;

    .line 481
    iput-object p3, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->mImageUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;)Ljava/lang/String;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;)Landroid/net/Uri;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->mImageUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;)Ljava/lang/String;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->mLink:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 2

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nullSessionCallback-failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdkTwitter"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nullSessionCallback-success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkTwitter"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkTwitter;->access$700(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback$1;-><init>(Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 493
    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkTwitter;->access$100(Lcom/twitter/sdk/android/core/TwitterSession;)Lorg/json/JSONObject;

    return-void
.end method
