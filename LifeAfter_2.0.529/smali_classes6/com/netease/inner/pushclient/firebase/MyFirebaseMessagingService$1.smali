.class Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService$1;
.super Ljava/lang/Object;
.source "MyFirebaseMessagingService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService;->onNewToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService;


# direct methods
.method constructor <init>(Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService$1;->this$0:Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching FCM registration token failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirebaseMessaging.getInstance().getToken()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService$1;->this$0:Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService;

    invoke-static {v0, p1}, Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService;->access$100(Lcom/netease/inner/pushclient/firebase/MyFirebaseMessagingService;Ljava/lang/String;)V

    return-void
.end method
