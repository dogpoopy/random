.class public final synthetic Lcom/google/common/cache/-$$Lambda$RemovalListeners$oU_c933hGNbwXhCVoOFlGI5KiWU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/cache/RemovalListener;

.field public final synthetic f$1:Lcom/google/common/cache/RemovalNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/cache/RemovalListener;Lcom/google/common/cache/RemovalNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/-$$Lambda$RemovalListeners$oU_c933hGNbwXhCVoOFlGI5KiWU;->f$0:Lcom/google/common/cache/RemovalListener;

    iput-object p2, p0, Lcom/google/common/cache/-$$Lambda$RemovalListeners$oU_c933hGNbwXhCVoOFlGI5KiWU;->f$1:Lcom/google/common/cache/RemovalNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/-$$Lambda$RemovalListeners$oU_c933hGNbwXhCVoOFlGI5KiWU;->f$0:Lcom/google/common/cache/RemovalListener;

    iget-object v1, p0, Lcom/google/common/cache/-$$Lambda$RemovalListeners$oU_c933hGNbwXhCVoOFlGI5KiWU;->f$1:Lcom/google/common/cache/RemovalNotification;

    invoke-static {v0, v1}, Lcom/google/common/cache/RemovalListeners;->lambda$asynchronous$0(Lcom/google/common/cache/RemovalListener;Lcom/google/common/cache/RemovalNotification;)V

    return-void
.end method
