.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$SimpleTimeLimiter$1$1jyUbzh62FwowsPIjYThnqFnWu0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Method;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/-$$Lambda$SimpleTimeLimiter$1$1jyUbzh62FwowsPIjYThnqFnWu0;->f$0:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/google/common/util/concurrent/-$$Lambda$SimpleTimeLimiter$1$1jyUbzh62FwowsPIjYThnqFnWu0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/util/concurrent/-$$Lambda$SimpleTimeLimiter$1$1jyUbzh62FwowsPIjYThnqFnWu0;->f$2:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/-$$Lambda$SimpleTimeLimiter$1$1jyUbzh62FwowsPIjYThnqFnWu0;->f$0:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/common/util/concurrent/-$$Lambda$SimpleTimeLimiter$1$1jyUbzh62FwowsPIjYThnqFnWu0;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/util/concurrent/-$$Lambda$SimpleTimeLimiter$1$1jyUbzh62FwowsPIjYThnqFnWu0;->f$2:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->lambda$invoke$0(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
