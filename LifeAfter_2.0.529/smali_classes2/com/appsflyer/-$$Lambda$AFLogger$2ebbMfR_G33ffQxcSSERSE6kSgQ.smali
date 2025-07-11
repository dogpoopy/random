.class public final synthetic Lcom/appsflyer/-$$Lambda$AFLogger$2ebbMfR_G33ffQxcSSERSE6kSgQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/-$$Lambda$AFLogger$2ebbMfR_G33ffQxcSSERSE6kSgQ;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/-$$Lambda$AFLogger$2ebbMfR_G33ffQxcSSERSE6kSgQ;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->lambda$2ebbMfR_G33ffQxcSSERSE6kSgQ(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
