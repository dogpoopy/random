.class final Lcom/appsflyer/internal/AFi1pSDK$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFi1pSDK;->values(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/internal/AFi1pSDK;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFi1pSDK;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1pSDK$5;->this$0:Lcom/appsflyer/internal/AFi1pSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFi1pSDK$5;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p3, p0, Lcom/appsflyer/internal/AFi1pSDK$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onInstallReferrerSetupFinished$0$AFi1pSDK$5(Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1pSDK$5;->this$0:Lcom/appsflyer/internal/AFi1pSDK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsflyer/internal/AFi1pSDK;->AFInAppEventType(Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;I)V

    return-void
.end method

.method public final onInstallReferrerServiceDisconnected()V
    .locals 3

    .line 93
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->e:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "Install Referrer service disconnected"

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AFLogger;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1pSDK$5;->this$0:Lcom/appsflyer/internal/AFi1pSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFi1pSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFi1pSDK;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1pSDK$5;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1pSDK$5;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/appsflyer/internal/-$$Lambda$AFi1pSDK$5$vezjxy5jXaYp2ZTJP_MpRzWMlO4;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/appsflyer/internal/-$$Lambda$AFi1pSDK$5$vezjxy5jXaYp2ZTJP_MpRzWMlO4;-><init>(Lcom/appsflyer/internal/AFi1pSDK$5;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
