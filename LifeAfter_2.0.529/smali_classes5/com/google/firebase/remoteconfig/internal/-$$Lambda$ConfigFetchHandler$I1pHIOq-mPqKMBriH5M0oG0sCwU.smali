.class public final synthetic Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigFetchHandler$I1pHIOq-mPqKMBriH5M0oG0sCwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

.field public final synthetic f$1:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigFetchHandler$I1pHIOq-mPqKMBriH5M0oG0sCwU;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigFetchHandler$I1pHIOq-mPqKMBriH5M0oG0sCwU;->f$1:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigFetchHandler$I1pHIOq-mPqKMBriH5M0oG0sCwU;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigFetchHandler$I1pHIOq-mPqKMBriH5M0oG0sCwU;->f$1:Ljava/util/Date;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->lambda$fetchIfCacheExpiredAndNotThrottled$3$ConfigFetchHandler(Ljava/util/Date;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
