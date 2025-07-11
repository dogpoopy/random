.class public interface abstract annotation Lcom/netease/mpay/oversea/auth/plugins/LifeCycleState;
.super Ljava/lang/Object;
.source "LifeCycleState.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ON_CREATE:I = 0x1

.field public static final ON_DESTROY:I = 0x6

.field public static final ON_PAUSE:I = 0x4

.field public static final ON_RESUME:I = 0x3

.field public static final ON_START:I = 0x2

.field public static final ON_STOP:I = 0x5
