.class public final synthetic Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/Task;

.field public final synthetic f$2:Lcom/google/android/gms/tasks/Task;

.field public final synthetic f$3:J

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;->f$1:Lcom/google/android/gms/tasks/Task;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;->f$2:Lcom/google/android/gms/tasks/Task;

    iput-wide p4, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;->f$3:J

    iput p6, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;->f$4:I

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;->f$1:Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;->f$2:Lcom/google/android/gms/tasks/Task;

    iget-wide v3, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;->f$3:J

    iget v5, p0, Lcom/google/firebase/remoteconfig/internal/-$$Lambda$ConfigAutoFetch$dIKsEJCjbXx7gPnQBWjdTjzJ-GQ;->f$4:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;->lambda$fetchLatestConfig$0$ConfigAutoFetch(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;JILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
