.class public final synthetic Lcom/appsflyer/-$$Lambda$AFLogger$jDsr33uaYutb39zgcB6HJUuGCZw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:[Lcom/appsflyer/internal/AFg1mSDK;


# direct methods
.method public synthetic constructor <init>([Lcom/appsflyer/internal/AFg1mSDK;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/-$$Lambda$AFLogger$jDsr33uaYutb39zgcB6HJUuGCZw;->f$0:[Lcom/appsflyer/internal/AFg1mSDK;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/-$$Lambda$AFLogger$jDsr33uaYutb39zgcB6HJUuGCZw;->f$0:[Lcom/appsflyer/internal/AFg1mSDK;

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->lambda$jDsr33uaYutb39zgcB6HJUuGCZw([Lcom/appsflyer/internal/AFg1mSDK;)V

    return-void
.end method
