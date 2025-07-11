.class public Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SdkTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwitterShareResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkTwitter;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/SdkTwitter;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 916
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TwitterShareResultReceiver-onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdkTwitter"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;->this$0:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    return-void
.end method
