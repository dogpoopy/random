.class public final synthetic Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigRegistrar$NVJiFOPwI5Hu1o9OJt46_HePDCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/components/Qualified;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/Qualified;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigRegistrar$NVJiFOPwI5Hu1o9OJt46_HePDCs;->f$0:Lcom/google/firebase/components/Qualified;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigRegistrar$NVJiFOPwI5Hu1o9OJt46_HePDCs;->f$0:Lcom/google/firebase/components/Qualified;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    move-result-object p1

    return-object p1
.end method
